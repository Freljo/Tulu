#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hello(from: ContractAddress, value: felt252858) {}


    #[external]
    fn Say_Hello(message: felt258258) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
