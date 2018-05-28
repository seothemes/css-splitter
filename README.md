# CSS Splitter

Splits Genesis child theme CSS, SCSS or Sass file into partials.

Basic script that separates standard Genesis child theme stylesheet into partial files. The script looks for section comments in the file starting with `'/* # '` and will break these sections into separate files. It then moves the partials into a `scss` directory, renames them to match the name of the section and generates an `index.scss` file.

## Requirements

<table width="100%">
	<thead>
		<tr>
			<th align="left" width="35%">Requirement</th>
			<th align="left" width="25%">How to Check</th>
			<th align="left" width="600">How to Install</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Bash 4.x</td>
			<td><code>bash --version</code></td>
			<td><a href="http://clubmate.fi/upgrade-to-bash-4-in-mac-os-x/">Install Bash</a></td>
		</tr>
		<tr>
			<td>Split</td>
			<td><code>split -h</code></td>
			<td><a href="https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man1/split.1.html">Split Manual</a></td>
		</tr>
	</tbody>
</table>

## Instructions

From the Terminal, navigate into your theme's root directory:

```shell
cd project/wp-content/themes/theme
```

Copy the script to your theme file:

```sh
wget https://raw.githubusercontent.com/seothemes/css-splitter/master/split.sh
```

*Pro Tip:* Before splitting a file, you can convert CSS to **SCSS** either manually or using a tool such as http://css2sass.herokuapp.com/

Run the following command, changing 'style.css' if necessary. The Terminal will prompt you to enter the system user password.

```shell
sh split.sh style.css
```

To further split the partials into components, move the `split.sh` script into the `scss/` directory. Edit the script in your favorite text editor and change the `'/\*\ #\ '` regex string to `'/\*\ ##\ '`. This will target all smaller sections to be split.
