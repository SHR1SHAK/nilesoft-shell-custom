menu(type='*' where=(sel.count or wnd.is_taskbar or wnd.is_edit) title=title.terminal sep=sep.top image=icon.run_with_powershell)
{
	$tip_run_admin=["\xE1A7 Press SHIFT key to run " + this.title + " as administrator", tip.warning, 1.0]
	$has_admin=key.shift() or key.rbutton()
	
	item(where=package.exists("WindowsTerminal") title=title.Windows_Terminal tip=tip_run_admin admin=has_admin image='@package.path("WindowsTerminal")\WindowsTerminal.exe' cmd="wt.exe" arg=`-d "@sel.path\."`)
}