#!/bin/ruby
# -*- coding: utf-8 -*-

class Scene
  def enter()
    puts "I guess this is just filler…given we've got a lot of other scenes."
    exit(1)
  end
end

class Engine
  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while(current_scene != last_scene)
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    current_scene.enter()
  end
end

class Death < Scene
  def enter()
    puts "You died! Why must you fail me so!"
    exit(0)
  end
end

# I haven't filled out these classes because the concept
# behind how they work is straightforward; I mostly wanted
# to figure out the other classes (which I didn't do well
# without looking at the answers, admittedly. But, at least,
# now I understand.
class CentralCorridor < Scene
  def enter()
  end
end

class LasorWeaponArmory < Scene
  def enter()
  end
end

class TheBridge < Scene
  def enter()
  end
end

class EscapePod < Scene
  def enter()
  end
end

class Map
  @@scenes = {
              "central_corridor" => CentralCorridor.new(),
              "laser_weapon_armory" => LaserWeaponArmory.new(),
              "the_bridge" => TheBridge.new(),
              "escape_pod" => EscapePod.new(),
              "death" => Death.new(),
              "finished" => Finished.new(),
             }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    @@scenes[scene_name]
  end

  def opening_scene()
    next_scene(@start_scene)
  end
end


a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
