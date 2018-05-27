# CSS Splitter

Splits Genesis child theme CSS, SCSS or Sass file into partials.

Basic script that separates standard Genesis child theme stylesheet into partial files. The script looks for the large comments in the file starting with '/* # ' and will break these sections into separate files. It then renames the partials to the name of the section. 

## Instructions

From the Terminal, navigate into your theme's root directory:

```shell
cd project/wp-content/themes/theme
```

Copy the script to your theme file:

```sh
wget https://raw.githubusercontent.com/seothemes/css-splitter/master/split.sh
```

Run the following command, changing 'style.css' if necessary.

```shell
sh split.sh style.css
```

You may need to enter your system user password for the renaming to work.
