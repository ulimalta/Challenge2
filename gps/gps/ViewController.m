//
//  ViewController.m
//  gps
//
//  Created by Ulisses Malta Santos on 20/01/14.
//  Copyright (c) 2014 Ulisses Malta Santos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <CLLocationManagerDelegate, MKMapViewDelegate>

@property (nonatomic, strong) MKMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.mapView = [[MKMapView alloc] initWithFrame: self.view.bounds];
    self.mapView.mapType = MKMapTypeStandard;
    self.mapView.scrollEnabled = YES;
    self.mapView.zoomEnabled = YES;
    self.mapView.showsUserLocation = YES;
    self.mapView.delegate = self;
    
    [self.view insertSubview: self.mapView atIndex: 0];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

#pragma mark MKMapViewDelegate

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.8;
    span.longitudeDelta = 0.8;
    
    CLLocationCoordinate2D location = self.mapView.userLocation.coordinate;
    
    region.span = span;
    region.center = location;
    
    [self.mapView setRegion: region animated: YES];
    [self.mapView regionThatFits: region];
}

@end
