Tips
----

### SublimeText

If you use SublimeText, Sublime has its own shortcuts that overrides the default Windows-layout. To get cut/copy/paste to work
with the mackeyboard-layout, add these lines to ``AppData\Roaming\SublimeText2\Packages\Default(Windows).sublime-keymap``:

        Key Bindings 

        { "keys": ["control+super+x"], "command": "cut" },
        { "keys": ["control+super+c"], "command": "copy" },
        { "keys": ["control+super+v"], "command": "paste" },

Thanks to [Seesharper](https://github.com/seesharper) for this.
