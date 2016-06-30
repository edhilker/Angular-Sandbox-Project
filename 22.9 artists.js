(function() {

    angular.module('app')
        .controller('ArtistsController', ['$sce', 'ArtistsManager', 'SpotifyService',
            function($sce, ArtistsManager, SpotifyService) {

                var vm = this;
                getArtists();

                ////////////////

                function getArtists() {
                    ArtistsManager.getArtists().then(function(response) {
                        vm.artists = response.data;
                    });
                }

                vm.add = function() {
                    ArtistsManager.createArtist({
                        name: vm.newArtist.name,
                        rating: vm.newArtist.rating > 0 ? vm.newArtist.rating : null
                    }).then(function() {
                        vm.newArtist = null;
                        getArtists();
                    });
                };

                vm.editMode = function(artist) {
                    vm.editArtist = artist;
                };

                vm.edit = function() {
                    ArtistsManager.updateArtist(
                        vm.editArtist.id, {
                            name: vm.editArtist.name,
                            rating: vm.editArtist.rating > 0 ? vm.editArtist.rating : null
                        }).then(function() {
                        vm.editArtist = null;
                        getArtists();
                    });
                };

                vm.delete = function(id) {
                    ArtistsManager.deleteArtist(id)
                        .then(getArtists);
                };

                vm.play = function(name) {
                    SpotifyService.getSpotifyArtistIdByName(name).then(function(id) {
                        SpotifyService.getTopTrackURLForArtist(id).then(function(url) {
                            vm.playUrl = url;
                        });
                    });
                };

                vm.closePlayer = function() {
                    vm.playUrl = null;
                };

                vm.getAudioUrl = function() {
                    return $sce.trustAsResourceUrl(vm.playUrl);
                };

            }
        ]);

})();
