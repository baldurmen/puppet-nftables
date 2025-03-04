# @summary enable conntrack for fwd
class nftables::inet_filter::fwd_conntrack {
  nftables::rule {
    'FORWARD-accept_established_related':
      order   => '05',
      content => 'ct state established,related accept';
    'FORWARD-drop_invalid':
      order   => '06',
      content => 'ct state invalid drop';
  }
}
