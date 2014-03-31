//
//=BEGIN MIT LICENSE
//
// Copyright (c) 2014 Andras Csizmadia
// http://www.vpmedia.hu
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
//=END MIT LICENSE
//

package liquidfun {
import crossbridge.liquidfun.CModule;

import flash.display.Sprite;

import flexunit.framework.Assert;

public class ParticleGroupDefTest extends Sprite {


    public function ParticleGroupDefTest() {
        CModule.rootSprite = this;
        super();
    }

    [Before]
    public function setUp():void {
    }

    [After]
    public function tearDown():void {
    }

    [BeforeClass]
    public static function setUpBeforeClass():void {
    }

    [AfterClass]
    public static function tearDownAfterClass():void {
    }

    [Test]
    public function test_constructor():void {
        var particleGroupDef:ParticleGroupDef = ParticleGroupDef.create();
        // position
        Assert.assertEquals(particleGroupDef.getX(), 0);
        Assert.assertEquals(particleGroupDef.getY(), 0);
        particleGroupDef.setX(10);
        particleGroupDef.setY(20);
        Assert.assertEquals(particleGroupDef.getX(), 10);
        Assert.assertEquals(particleGroupDef.getY(), 20);
        particleGroupDef.setXY(30,40);
        Assert.assertEquals(particleGroupDef.getX(), 30);
        Assert.assertEquals(particleGroupDef.getY(), 40);
        //
        particleGroupDef.angle = 1;
        // cleanup
        particleGroupDef.destroy();
        particleGroupDef = null;
    }

}
}