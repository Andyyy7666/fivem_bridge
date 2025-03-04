# fivem_bridge
FiveM resource bridge, this can be used in your resource to easily add compatibility with frameworks, targets, inventories, etc.

Our goal is to create a non-bloated, easy to understand bridge allowing easy and simple compatibility without any extra steps.

## Bridged resources:

| Frameworks | Inventories  | Notifications      | Targets
| -----------| ------------ | ------------------ | --------- |
| NDCore     | ox_inventory | ox_lib             | ox_target |
| Ox Core    | qb_inventory | ESX Notifications  | qb_target |
| ESX        |              | QB Notifications   |           |
| QBCore     |              | Default GTA Online |           |
| QBX Core   |              |                    |           |



## Bindings
### Frameworks
#### Client
| Bridge         | Params                              | Returns                                                 |
| -------------- | ----------------------------------- | ------------------------------------------------------- |
| GetPlayer      | None                                | `table: { fullName, firstName, lastName, dob, gender }` |
| GetMoney       | type: `string` (cash, bank, black)  | `number`                                                |
| IsPlayerLoaded | None                                | `boolean`                                               |
