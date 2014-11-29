#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){

    ofBackground(255);
    ofEnableSmoothing();

}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
 
    int radius = 150;
    ofSetCircleResolution(60);
    ofSetColor(0);
    ofNoFill();
    ofCircle(ofGetWidth()/2, ofGetHeight()/2, radius);

}
