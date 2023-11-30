#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hello(from: ContractAddress, value: felt287758) {}


    #[external]
    fn Say_Hello(message: felt2257758) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
