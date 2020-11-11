
resource "aws_iam_group" "infosec" {
  name = "infosec"
  path = "/"
}

resource "aws_iam_group_membership" "infosec" {
  name = "infosec-group"
  users = [
    "${aws_iam_user.ksenia.name}",
    "${aws_iam_user.ron.name}",
    "${aws_iam_user.sam.name}",
  
  ]
  group = "${aws_iam_group.infosec.name}"
}

