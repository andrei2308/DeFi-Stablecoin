// //SPDX-License-Identifier: MIT

// pragma solidity ^0.8.18;
// import {Test,console} from "forge-std/Test.sol";
// import {StdInvariant} from "forge-std/StdInvariant.sol";
// import {DeployDSC} from "../../script/DeployDSC.s.sol";
// import {DSCEngine} from "../../src/DSCEngine.sol";
// import {DecentralizedStableCoin} from "../../src/DecentralizedStableCoin.sol";
// import {HelperConfig} from "../../script/HelperConfig.s.sol";
// import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
// contract OpenInvariantsTest is StdInvariant,Test{
//     DeployDSC deployer;
//     DSCEngine engine;
//     DecentralizedStableCoin dsc;
//     HelperConfig helperConfig;
//     address weth;
//     address wbtc;
//     function setUp() public {
//     deployer = new DeployDSC();
//     (dsc, engine, helperConfig) = deployer.run();
//     targetContract(address(engine));
//     (,, weth, wbtc,) = helperConfig.activeNetworkConfig();

// }
//     function invariant_protocolMustHaveMoreValueThanTotalSupply() public view {
//         uint256 totalSupply = dsc.totalSupply();
//         uint256 totalWethDeposited = IERC20(weth).balanceOf(address(dsc));
//         uint256 totalBtcDeposited = IERC20(wbtc).balanceOf(address(dsc));
//         uint256 wethValue = engine.getUsdValue(weth, totalWethDeposited);
//         uint256 wbtcValue = engine.getUsdValue(wbtc, totalBtcDeposited);

//         assert(totalSupply <= wethValue + wbtcValue);
//     }
// }