------------------------------------------------------------------------
OpenTTD Estonian Town Names
========================================================================
------------------------------------------------------------------------

1.  Requirements
2.  Installation
3.  Building from the source on Linux
4.  Configuration
5.  License
6.  Support
7.  Authors

1. Requirements
---------------

- OpenTTD.

2. Installation
---------------

Please use [BaNaNaS](http://bananas.openttd.org) for installation.

3. Building from the source on Linux
------------------------------------

- [Install NML with all the requirements](http://newgrf-specs.tt-wiki.net/wiki/NML:Getting_started#Linux)
- Grab the latest source from
<https://github.com/gynter/openttd-estonian-town-names/archive/master.zip>
and unzip it.

    *Note: You can also get the sources using the 
    [GIT](http://git-scm.com/book/en/Getting-Started-Installing-Git) and 
    cloning the `git://github.com/gynter/openttd-estonian-town-names.git`
    repository.*

- Build the NewGRF:

        $ ./make.sh
- Follow the instructions on the screen and copy the NewGRF archive to
  the OpenTTD NewGRF directory.

**NB: Compiling is broken with the NML 0.3.0 (r2085). You need to apply
[this patch](http://sprunge.us/SHid) and compile NML from source. To do so:**

- [Optain the NML source](http://bundles.openttdcoop.org/nml/nightlies/r2085/);
- Extract the sources and `cd` to the sources directory;
- Apply the patch:

        $ wget http://sprunge.us/SHid
        $ patch -p1 < SHid
- Make and install NML:

        $ make
        $ make install

4. Configuration
----------------

Run OpenTTD. Choose *NewGRF Settings* and enable the NewGRF. Then 
choose *Game Options* and select *Estonian* from *Town names* 
selection menu.

5. License
------------

This software is licensed as described in the file `LICENSE.md`, which 
You should have received as part of this distribution. The terms are 
also available at 
<https://github.com/gynter/openttd-estonian-town-names/blob/master/LICENSE.md>.

6. Support
----------

Issue tracker can be found at 
<https://github.com/gynter/openttd-estonian-town-names/issues>.

7. Authors
----------

- Günter Kits (gynter@kits.ee)
