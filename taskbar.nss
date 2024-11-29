menu(type="taskbar" vis=key.shift() or key.lbutton() pos=0 title=app.name image=\uE249)
{
	item(title="version\t"+@app.ver vis=label)
	item(title="config" image=\uE10A cmd='"@app.cfg"')
	item(title="manager" image=\uE0F3 admin cmd='"@app.exe"')
	item(title="directory" image=\uE0E8 cmd='"@app.dir"')
}
menu(where=@(this.count == 0) type='taskbar' image=icon.settings expanded=true)
{
	item(vis=key.shift() title="Restart Explorer" cmd=command.restart_explorer image=icon.settings)
}