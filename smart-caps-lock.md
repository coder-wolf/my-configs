# Smart Caps Lock: Remap to Control AND Escape (Linux, Mac, Windows)

把 <kbd>Caps Lock</kbd> 變成智慧的 <kbd>Control</kbd> 以及 <kbd>Escape</kbd> ：

- 單獨輕按一下就是 <kbd>Escape</kbd> 。
- 若按下時同時按著其他鍵，就會是 <kbd>Control</kbd> 。

這應該是 Vim 和 Emacs 的最佳解了！(Emacs? Bash 的快捷鍵就是 Emacs 系列的)

- Send <kbd>Escape</kbd> if you tap <kbd>Caps Lock</kbd> alone.
- Send <kbd>Control</kbd> if you press <kbd>Caps Lock</kbd> with another key.

For both Vim and Emacs world.

## GNU/Linux

### Step 1. Install XCAPE

Install [XCAPE](https://github.com/alols/xcape) (`xcape`). (Linux utility to configure modifier keys to act as other keys when pressed and released on their own.)

Ubuntu:

```bash
sudo apt-get install xcape
```

### Step 2. Run the command

```bash
# make CapsLock behave like Ctrl:
setxkbmap -option ctrl:nocaps

# make short-pressed Ctrl behave like Escape:
xcape -e 'Control_L=Escape'
```
The effect should apply immediately.

### Step 3. Autostart

Append code from Step 2 to file `~/.xprofile` to run the command when X starts.

## macOS

1. Download and install [Karabiner-Elements](https://pqrs.org/osx/karabiner/), a powerful and stable keyboard customizer.
2. Open Karabiner-Elements, select **Complex Modifications** tab, and click **Add rule** at the bottom.
3. Click **Import more rules from the Internet (open a web browser)**
4. Find **Change caps_lock to dual keys, escape and left_control** and click on **enable**.

The effect should apply immediately.

If you cannot find the rule, you can manually edit the config files at **~/.config/karabiner/karabiner.json**, under **profiles**:

```
"rules": [
                    {
                        "description": "Post escape if caps is pressed alone, left_ctrl otherwise",
                        "manipulators": [
                            {
                                "from": {
                                    "key_code": "caps_lock",
                                    "modifiers": {
                                        "optional": [
                                            "any"
                                        ]
                                    }
                                },
                                "to": [
                                    {
                                        "key_code": "left_control"
                                    }
                                ],
                                "to_if_alone": [
                                    {
                                        "key_code": "escape"
                                    }
                                ],
                                "type": "basic"
                            }
                        ]
                    },
]
```

## Windows

### Option 1:

1. Download and install [AutoHotKey](https://autohotkey.com/).
2. Use the script [CapsLockCtrlEscape.ahk](https://gist.github.com/sedm0784/4443120).

### Option 2:

Download and run [dual-key-remap](https://github.com/ililim/dual-key-remap). (Note that in config.txt, CONTROL might needed to changed to LEFT_CTRL for some computers)

For both options, the effect should apply immediately.

Credit: https://gist.github.com/tanyuan/55bca522bf50363ae4573d4bdcf06e2e

