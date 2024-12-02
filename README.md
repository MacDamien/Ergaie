Ergaie
================================================================================
/!\ Caveat : not all links are yet functionnal.

A layout for French, English and programming. It’s a fork of Erglace which is a fork of [ErgEAU](https://github.com/IgrecL/ErgEAU), initially adapted for compact keyboards compatibility. It uses many conventions of [Ergo-L](https://github.com/Nuclear-Squid/ergol).
I reproduce here the main caracteristics of the Erglace Layout, but please refer to the main branch [Erglace](https://github.com/Lysquid/Erglace)

TL;DR
--------------------------------------------------------------------------------

* a keyboard layout optimized for French and English
* uses a dead key for the most frequent accented characters
* uses the AltGr layer for programming symbols
* fits on 30 keys for compact keyboards compatibility
* trades easy access to common shortcuts for full optimization (A and Z on the right side)
* lower SFB and LSB than most previous French layouts
* lowers mental load in the process of the layout learning
* equilibrated load for both hands (49 % / 51 %)
* easier to learn for newcomers from bépo or Optimot layouts with the vowels aside (even more in its mirrored version)

See the [design notes](NOTES.md) for the details, and join the [Ergo-L discord](https://discord.gg/RH34GjQEgC) to discuss the layout with us. [Check the stats !][1]

[1]: https://

> La différence avec [Ergo-L](https://ergol.org/) ?
>
> Ergaie, dans la droite ligne d’Erglace abandonne l'accès facilité à tous les raccourcis usuels à gauche, mais au final, seuls le A et le Z étant à droite manquent. Ergaie, comme Erglace, cherche à réduire les SFB (Single Finger Bigramme). Les SFB correspondent aux enchaînements de deux caractères qui utilisent le même doigt, ce qui ralentit la vitesse de frappe. L’idée à l’origine du design d’Ergaie était d’augmenter la présence de motifs mieux mémorisables basés sur la composition syllabique pour réduire la charge mentale lors de la phase d’apprentissage de la disposition losqu’on est habitué à une disposition de type Dvorak comme le Bépo : par exemple. les digrammes **nc**, **rd** sont moins utiles à la mémorisation que les digrammes **ai** **eu** **oi** parce que ces derniers entrent en jeu lors de la composition syllabique des mots. Le principe est de garder les digrammes fréquents sur des touches proches pour créer des mini-roulements qui engendrent des roulements (3 lettres) : **yeu** **ieu** **aie** **jou** **jeu** **foi** **you**. Les voyelles sont regroupées à droite plutôt qu’à gauche pour garder les raccourcis courants sous la main gauche.
>
> L'autre différence avec Ergo-L est qu'Ergaie, comme Erglace, cherche à minimiser les redirections, c'est-à-dire les enchaînements de trois caractères d'une même main avec un changement de direction, mouvement considéré comme inconfortable. Pour ce faire, toutes les voyelles se retrouvent d'un côté, comme en Bépo, ce qui favorise l'alternance des mains et les digrammes syllabiques à extension limitée. L’éloignement limité de deux touches qui s’enchaînent est propre à faciliter la rétention du digramme en question.
Les statistiques sur le corpus commun pour les tests des claviers Ergo indique que seulement 2 redirections fâcheuses sont à signaler pour 0,07 % : `ie. / joi` et `rms / yea / joy`!
>
> Au-delà du placement des lettres, Ergaie, comme Erglace a les mêmes fonctionnalités qu'Ergo-L. La couche de symboles est directement reprise de ce dernier.
>
>Pour tirer le maximum de profit de cette disposition, adopter l’angle-mode (position dactylographique des bras en Λ) et décaler les touches `xgmp` d’un cran vers la gauche est une suggestion utile, comme elle semble l’être pour toutes les dispositions Ergo.
>
> La différence d’Ergaie avec Erglace tient essentiellement à la facilitation des motifs vocaliques du français par :
>* l’inversion a <–> i qui permet : ai vers l’intérieur,  -aie- est simplifié ainsi que -ie- -ieu-, rapproche le -oi-
>*l’inversion j <–> y (et le décalage de y) qui permet : un j’ (apostrophe typographique) plus simple sans abîmer trop le `you` qui reste agréable quand il est à droite sur un clavier décalé ou sur un clavier ortholinéaire.
>  
> Vous allez peut-être aimer : ai, aie, ieu, eu, ay, ei, ie, ea, oi, ou,… ng, gn, he, of, sp, st, rs, mp, mb, nc, ld, jeu, jou, où, j’ai, you (mais certains n’aiment pas ce dernier).


Layout
--------------------------------------------------------------------------------

![base layout](img/ergaie.svg)

The dead key <kbd>★</kbd> gives access to all accented letters you’ll need to write in proper French:
 
![dead key layout](img/ergaie_1dk.svg)

… and the AltGr layer is fully dedicated to programming symbols.

![altgr layout](img/ergaie_altgr.svg)

[Try it out!](https://ergol.org/dactylo/#ergaie)

Install
--------------------------------------------------------------------------------

You’ll need the latest version of [Kalamine][2] to build your own layout. We
*highly* recommend using [pipx][5], once you have it installed (by following
their guide), you can just run the following command:

```bash
pipx install kalamine
```

Download the [layouts/ergaie.toml][4] file in this repo and build the layout :

```bash
kalamine ergaie.toml
```

You’ll get a `dist` folder containing all of the drivers.

Then, to install Ergaie, follow the [install section of Kalamine’s repo][3],
and you should be good to go !

[2]: https://github.com/fabi1cazenave/kalamine
[3]: https://github.com/fabi1cazenave/kalamine#installing-distributable-layouts
[4]: layouts/ergaie.toml
[5]: https://github.com/pypa/pipx?tab=readme-ov-file#install-pipx


### Install (Linux only)

`xkalamine` is a linux‑specific tool (shipped with `kalamine`) to easily
install keyboard layouts on Linux. You can drop `sudo` if you use wayland, but
it’s required on Xorg.

```bash
sudo xkalamine install ergaie.toml  # Install the layout
```

Then switch to Ergaie using the following command:

```bash
setxkbmap fr -variant ergaie  # Switch your keyboard layout to ergaie
```
Miror version
--------------------------------------------------------------------------------

This miror version could be useful for people who are accustomated to the dvorak like dispositions with vowels on the left.
You then loose the shortcuts on the left.
[Ergaie_miroir](layouts/ergaie_miroir.toml)

Make Your Own !
--------------------------------------------------------------------------------

If you wish to modify the layout, the `layouts/*.{toml,yaml}` are human-readable
ASCII arts of the final layout. You can easily edit them, then run `make` (or
`make watch`) at the root of the repo to generate the `.json` files used to
benchmark layouts on the [stats page][1].

This repo contains all of the code for the [Ergo‑L website](https://ergol.org),
so you can run the page locally to try your prototypes !
