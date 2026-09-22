script {
    use cedra_framework::cedra_governance;
    use cedra_framework::oracle_config;
    fun main(proposal_id: u64) {
        let framework = cedra_governance::resolve(proposal_id, @0x1);
        oracle_config::set_for_next_epoch(
            &framework,
            @0x108c56518936177dbd434b82b5e0ee287affeba5d702fa0d27348e16c77bda4c,
        );
        cedra_governance::reconfigure(&framework);
    }
}