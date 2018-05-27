# CSS Splitter

Splits Genesis child theme CSS, SCSS or Sass file into partials.

Basic script that separates standard Genesis child theme stylesheet into partial files. The script looks for the large comments in the file starting with '/* # ' and will break these sections into separate files. It then renames the partials to the name of the section. 

## Instructions

Run `sh split.sh style.css` where 'style.css' is the name of the file you wish to split.

