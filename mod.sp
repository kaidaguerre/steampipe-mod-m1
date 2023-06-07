
variable "v1" {
  type    = string
  default = "m1-default"
}


mod "m1" {
  title   = "Mod 1"
  require {
    mod "github.com/kai/steampipe-mod-m2" {
      version = "*"
    }
  }
}

dashboard "d1"{
    table {
        sql = "select '${var.v1}' as var_value"
    }
}