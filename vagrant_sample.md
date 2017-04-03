# Sample of using Vagrant

Our example is launching a Vagrant box for LAMP (because PHP/MySQL/Apache is a pain).

This uses a 'box' publicly listed on Vagrant's index [here](https://atlas.hashicorp.com/scotch/boxes/box)

(Documentation [here]())

You'll need to install Vagrant and a virtualizer (I use [VirtualBox](https://www.virtualbox.org/wiki/Downloads))


```{bash}
mkdir ~/test_box
cd ~/test_box

# Writes an vagrant file, which specifies many
# of the advance features of a box
vagrant init scotch/box

# Vagrant starts up
vagrant up --provider virtualbox

# Once the box downloads and cycles up
# This lets you configure anything else on the
# virtual machine

vagrant ssh # from the test_box dir

# Turn it off
vagrant halt

# Remove it altogether
vagrant destroy
cd ..
rm -rf test_box

```

Once the box cycles, `vagrant box outdated`
