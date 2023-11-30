#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hello(from: ContractAddress, value: felt257758) {}


    #[external
    fn Say_Hello(message: felt225745478) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
