#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hello(from: ContractAddress, value: felt22858) {}


    #[external]
    fn Say_Hello(message: felt28258) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
