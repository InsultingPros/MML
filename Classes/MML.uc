// Hacky yet very minimalistic mut loader realization
// Author        : Shtoyan
// Home Repo     : https://github.com/InsultingPros/MML
// License       : https://www.gnu.org/licenses/gpl-3.0.en.html
class MML extends Mutator
    abstract
    config(MML);

var private config string VotingOption;
var private config array<string> Mutator;

event PreBeginPlay() {
    local int i;

    super.PreBeginPlay();

    for (i = 0; i < Mutator.length; i++) {
        if (Mutator[i] != "") {
            Log("Loading additional mutator: " $ Mutator[i], class.outer.Name);
            Level.Game.AddMutator(Mutator[i], true);
        }
    }
}

// add list's name to server info, if someone wants
// to use it in CustomServerDetails for example
function GetServerDetails(out GameInfo.ServerResponseLine ServerState) {
    local int i;

    i = ServerState.ServerInfo.Length;
    ServerState.ServerInfo.Length = i + 1;
    ServerState.ServerInfo[i].Key = "Voting Option";
    ServerState.ServerInfo[i].Value = VotingOption;
}

defaultproperties {
    GroupName="KF-MultiMutLoader"
    FriendlyName="Multi Mut Loader"
    Description="Loads selected list of mutators to the game."
}