/*
/// Module: display_name
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

module display_name::display_name;

//key,copy,drop,store
public struct Sample has key, store{
    id: UID,
    name: vector<u8>
}
public fun mint(ctx: &mut TxContext, name:vector<u8>){
    let obj =Sample{
        id:object::new(ctx),
        name 
    };
transfer::share_object(obj);
}
