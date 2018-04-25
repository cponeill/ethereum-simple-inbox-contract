pragma solidity ^0.4.23;

/// @title Publishing contract for media content
contract PublishingContract {

	

	// instantiate a struct with basic publishing information
	struct contractInfo {
		string fileUrl; // file url where content is located
		string artistName; // name of artist
		string pieceTitle; // title of piece submitted
	}

	contractInfo[] public contentContracts;

	// create a new publishing contract to submit to the blockchain
	function PublishContract(string url, string name, string title) {
		// address of content publisher
		address public publisher = msg.sender;

		// push contents of publishing to array
		contentContracts.push(contractInfo({
			fileUrl: url,
			artistName: name,
			pieceTitle: title
			})
		);
	}

}