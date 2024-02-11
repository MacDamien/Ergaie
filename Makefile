all:
	@for file in layouts/*.toml; do \
		kalamine make $$file --out "layouts/$$(basename $${file%.*}).json"; \
	done
	@for file in layouts/*.yaml; do \
		kalamine make $$file --out "layouts/$$(basename $${file%.*}).json"; \
	done

watch:
	@inotifywait -m layouts -e close_write | while read -r _path _action file; do \
		case $$file in \
			*yaml) kalamine make "layouts/$$file" --out "layouts/$$(basename "$${file%.*}").json";; \
			*toml) kalamine make "layouts/$$file" --out "layouts/$$(basename "$${file%.*}").json";; \
		esac \
	done

dev:
	pip3 install kalamine

clean:
	rm -rf dist/*

# the install/uninstall targets below require Kalamine v0.4.2+

install:
	@echo "Installer script for XKB (GNU/Linux). Requires super-user privileges."
	@echo
	xkalamine install layouts/ergol.yaml

uninstall:
	@echo "Unistaller script for XKB (GNU/Linux). Requires super-user privileges."
	@echo
	xkalamine remove fr/ergol
	@echo

release:
	rm -rf dist
	kalamine make layouts/erglace.toml
	cp layouts/erglace.toml dist/
	cp -f dist/erglace.json layouts/erglace.json
	mv -f dist/erglace.svg img
	cp -f img/erglace.svg img/erglace_1dk.svg
	cp -f img/erglace.svg img/erglace_altgr.svg
	cp -f img/erglace.svg img/erglace_all.svg
	sed -i 's/iso intlBackslash/ergo ol40/g' img/erglace.svg
	sed -i 's/iso intlBackslash/ergo ol40 dk/g' img/erglace_1dk.svg
	sed -i 's/iso intlBackslash/ergo ol40 altgr/g' img/erglace_altgr.svg
	sed -i 's/iso intlBackslash/ergo ol40 mixed/g' img/erglace_all.svg