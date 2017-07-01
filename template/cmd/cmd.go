package cmd

import "github.com/spf13/cobra"

// RootCmd is the main command.
var RootCmd = &cobra.Command{
	Use:   "{{ ProjectName }}",
	Short: "{{ ProjectName }} short description",
	Long:  "{{ ProjectName }} long description.",
}

func init() {
	RootCmd.AddCommand(sampleCmd, versionCmd)
}
