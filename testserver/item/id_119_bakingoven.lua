require("content.craft.baking")

module("item.id_119_bakingoven", package.seeall)

function UseItem(User, SourceItem, TargetItem, ltstate)
    content.craft.baking.baking:showDialog(User, SourceItem)
end
