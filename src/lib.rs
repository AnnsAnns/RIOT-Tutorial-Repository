#![no_std]

use riot_wrappers::riot_main;
use riot_wrappers::println;

extern crate rust_riotmodules;

riot_main!(main);

fn main() {
    println!("You are running RIOT using Rust on a(n) {} board.\n", riot_wrappers::BOARD);
}