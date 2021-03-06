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

package org.liquidfun {
import flash.display.Sprite;

import flexunit.framework.Assert;

import org.liquidfun.core.CModule;

/**
 * TBD
 *
 * @author Andras Csizmadia
 */
public class ParticleDefTest extends Sprite {

    public function ParticleDefTest() {
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
    public function test_construct():void {
        /*
         flags = 0;
         position = b2Vec2_zero;
         velocity = b2Vec2_zero;
         color = b2ParticleColor_zero;
         lifetime = 0.0f;
         userData = NULL;
         group = NULL;
         */
        var particleDef:ParticleDef = ParticleDef.create();
        // default properties
        Assert.assertEquals(particleDef.flags, 0);
        Assert.assertEquals(particleDef.getX(), 0);
        Assert.assertEquals(particleDef.getY(), 0);
        Assert.assertEquals(particleDef.getVX(), 0);
        Assert.assertEquals(particleDef.getVY(), 0);
        Assert.assertEquals(particleDef.lifetime, 0);
        // cleanup
        particleDef.destroy();
        particleDef = null;
    }

    [Test]
    public function test_get_set():void {
        var particleDef:ParticleDef = ParticleDef.create();
        // position
        particleDef.setX(10);
        particleDef.setY(20);
        Assert.assertEquals(particleDef.getX(), 10);
        Assert.assertEquals(particleDef.getY(), 20);
        particleDef.setXY(30, 40);
        Assert.assertEquals(particleDef.getX(), 30);
        Assert.assertEquals(particleDef.getY(), 40);
        // color
        particleDef.setColor(0xFF, 0x00, 0xFF, 0xFF);
        //Assert.assertEquals(particleDef.color, 0xFF00FF);
        // lifetime
        particleDef.lifetime = 50;
        Assert.assertEquals(particleDef.lifetime, 50);
        // group
        particleDef.group = 1;
        Assert.assertEquals(particleDef.group, 1);
        // flags
        particleDef.flags = 2;
        Assert.assertEquals(particleDef.flags, 2);
        // cleanup
        particleDef.destroy();
        particleDef = null;
    }

}
}