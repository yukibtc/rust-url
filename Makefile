precommit:
	cargo fmt --all -- --config format_code_in_doc_comments=true
	cargo clippy -p url-fork
	cargo clippy -p url-fork --no-default-features
	cargo clippy -p url-fork --no-default-features --features serde
	cargo test -p url-fork
	cargo test -p url-fork --no-default-features
	cargo test -p url-fork --no-default-features --features serde

clean:
	cargo clean