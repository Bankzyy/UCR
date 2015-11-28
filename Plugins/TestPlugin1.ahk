/*
Demos persistent guicontrols / callbacks for change of value for a guicontrol
*/
class TestPlugin1 extends _Plugin {
	Init(){
		Gui, Add, Text, xm, % "Test Persistent Editbox"
		this.AddControl("MyEdit1", this.MyEditChanged.Bind(this, "MyEdit1"), "Edit", "x150 h400 yp-2 w330")
		;this.AddControl("MyEdit2", this.MyEditChanged.Bind(this, "MyEdit2"), "Edit", "xm w200")

	}
	
	MyEditChanged(name){
		; All GuiControls are automatically added to this.GuiControls.
		; .value holds the contents of the GuiControl
		ToolTip % Name " changed value to: " this.GuiControls[name].value
	}
}