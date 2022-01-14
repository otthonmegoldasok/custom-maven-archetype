/**
* This script will be executed upon creating a project from this archetype.
* https://maven.apache.org/archetype/maven-archetype-plugin/advanced-usage.html
*/

println "artifactId: " + artifactId
println "request: " + request
println "archetypeArtifactId: " + request.getArchetypeArtifactId()
println "archetypeGroupId: " + request.getArchetypeGroupId()
println "archetypeVersion: " + request.getArchetypeVersion()
println "archetypeName: " + request.getArchetypeName()
println "artifactId: " + request.getArtifactId()
println "groupId: " + request.getGroupId()
println "version: " + request.getVersion()

def file = new File(request.getOutputDirectory(), request.getArtifactId() + "/buildAndRun.sh")
file.setExecutable(true, false)
