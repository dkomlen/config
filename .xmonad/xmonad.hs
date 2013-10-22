import XMonad
import XMonad.Config.Gnome
main = do xmonad $ gnomeConfig {
	focusFollowsMouse = False,
	focusedBorderColor = "#8AE334" 
}
