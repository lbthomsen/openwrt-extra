module("luci.controller.lifeline.lifeline", package.seeall)  --notice that new_tab is the name of the file lifeline.lua
 function index()
     entry({"admin", "lifeline"}, firstchild(), "LifeLine", 10).dependent=false  --this adds the top level tab and defaults to the first sub-tab (tab_from_cbi), also it is set to position 30
     entry({"admin", "lifeline", "overview"}, cbi("lifeline/overview"), "Overview", 1)  --this adds the first sub-tab that is located in <luci-path>/luci-myapplication/model/cbi/myapp-mymodule and the file is called cbi_tab.lua, also set to first position
     entry({"admin", "lifeline", "someview"}, template("lifeline/someview"), "View Tab", 2)  --this adds the second sub-tab that is located in <luci-path>/luci-myapplication/view/myapp-mymodule and the file is called view_tab.htm, also set to the second position
end
