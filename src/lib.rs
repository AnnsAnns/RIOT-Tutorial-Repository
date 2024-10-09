#![no_std]

use riot_wrappers::println;
use riot_wrappers::riot_main;

extern crate rust_riotmodules;

riot_main!(main);

fn main() {
    println!(
        "You are running RIOT using Rust on a(n) {} board.",
        riot_wrappers::BOARD
    );
}
