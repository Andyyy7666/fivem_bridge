# fivem_bridge
FiveM resource bridge, this can be used in you resource to easily add compatibilty with frameworks, targets, inventories, etc.

Our goal is to create a non bloated, easy to understand brigde allowing easy and simple compatiblity without any extra steps.

## Bridged resources:

| Frameworks | Inventories | Notifications | Targets
| ------------- | ------------- | ------------- | ------------- |
| NDCore | ox_inventory | ox_lib | ox_target
| OXCore | qb_inventory | ESX Notifcations | qb_taret
| ESX | | QB Notifications | 
| QBCore | | Default GTA Online |
| QBX Core |



## Bindings
### Frameworks
#### Client
| Bridge  | Params | Returns
| ------------- | ------------- | ------------- |
| GetPlayer | None | `table: { fullName, firstName, lastName, dob, gener }`
| GetMoney | type: `string` (cash, bank, black)  | `number`
| IsPlayerLoaded | None | `boolean`
