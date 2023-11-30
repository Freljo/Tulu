#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hello(from: ContractAddress, value: felt25858) {}


    #[external]
    fn Say_Hello(message: felt22558) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
