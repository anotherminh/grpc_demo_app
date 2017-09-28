import com.trueaccord.scalapb.compiler.Version.scalapbVersion

name := "grpc_calculator_client"

version := "1.0"

scalaVersion := "2.12.3"

lazy val versions = new Object {
  val grpc = "1.3.0"
  val zendeskGrpc = "1.3.0"
}

libraryDependencies ++= Seq(
  "com.trueaccord.scalapb" %% "scalapb-runtime" % scalapbVersion % "protobuf",
  "com.trueaccord.scalapb" %% "scalapb-runtime-grpc" % scalapbVersion,
  "io.grpc" % "grpc-protobuf" % versions.grpc,
  "com.google.protobuf" % "protobuf-java" % "3.2.0"
)
