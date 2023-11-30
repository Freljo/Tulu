#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hello(from: ContractAddress, value: felt28457758) {}


    #[external]
    fn Say_Hello(message: felt2257454758) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
