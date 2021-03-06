class giddyup::install {
	file {
		"/usr/local/lib/giddyup":
			ensure  => directory,
			mode    => 0755;
		"/usr/local/lib/giddyup/giddyup":
			ensure  => file,
			links   => follow,
			source  => "puppet:///modules/giddyup/giddyup",
			mode    => 0555,
			require => [ File["/usr/local/lib/giddyup/update-hook"],
			             File["/usr/local/lib/giddyup/functions.sh"]
			           ];
		"/usr/local/lib/giddyup/update-hook":
			ensure  => file,
			links   => follow,
			source  => "puppet:///modules/giddyup/update-hook",
			mode    => 0555;
		"/usr/local/lib/giddyup/functions.sh":
			ensure  => file,
			links   => follow,
			source  => "puppet:///modules/giddyup/functions.sh",
			mode    => 0444;
		"/usr/local/bin/giddyup":
			ensure  => "/usr/local/lib/giddyup/giddyup";
	}
}
