local module={

	['TweenService']={

		Assocs={
			'https://developer.roblox.com/en-us/api-reference/class/TweenService';
			'https://developer.roblox.com/en-us/api-reference/function/TweenService/Create';
			'https://developer.roblox.com/en-us/api-reference/function/ServiceProvider/GetService';
			'https://developer.roblox.com/en-us/api-reference/property/Tween/TweenInfo';
			'https://developer.roblox.com/en-us/api-reference/datatype/TweenInfo';

		};

		Desc={
			[[TweenService allows you to interpolate many properties, this is extremely useful for creating animations. (Article written by TT#4818 ; <@752954177889763368> ; Developer Hub)]]
		};

		lDesc={
            [[Tweens are used to interpolate the properties of instances. These can be used to create animations for various Roblox objects. Almost any numeric property can be tweened using TweenService. Note that only specific types of properties can be used with TweenService. The types of properties that can be tweened are:

            number
            bool
            CFrame
            Rect
            Color3
            UDim
            UDim2
            Vector2
            Vector2int16
            Vector3
            EnumItem
            TweenService’s constructor function, TweenService:Create, takes information about the animation and generates the Tween object which can be used to play the animation. Note that Tweens can animate multiple properties at the same time.
            
            Details on how the interpolation of the tween is to be carried out are given in the tweenInfo parameter of TweenService:Create(). The TweenInfo data type includes a range of properties that can be used to achieve various styles of animation, including reversing and looping Tweens (see examples).
            
            Multiple tweens can be played on the same object at the same time, but they must not be animating the same property. If two tweens attempt to modify the same property, the initial tween will be cancelled and overwritten by the most recent tween (see examples).
            
            Although other methods exist for tweening objects, such as GuiObject:TweenSizeAndPosition, TweenService allows multiple properties to be modified and for the animation to be paused and cancelled at any point.]]
		};

		Ex={
            [[Example 1: game:GetService("TweenService"):Create(workspace.Baseplate,TweenInfo.new(1,Enum.EasingStyle.Back,Enum.EasingDirection.InOut,0,false,0),{Color3=Color3.new(0,1,0)}):Play()
            Formula: game:GetService("TweenService"):Create(Object,TweenInfo.new(Time,EasingStyle,EasingDirection,RepeatCount,Reverse,delayTime))
            ]];
            [[How to create a Tween? 

            Well before you create a tween you need 3 things, the object you are animating, the  tweening information, and a dictionary property table
            Okay for this demonstration, we will tween a part to go to a certain direction and this will be done on the server. Also, I highly recommend to not dedicate your tweens to the server because that can drastically decrease performance. :sweat_smile:Each line is explained with in the script.
            ```lua
            local TweenService = game:GetService("TweenService") --- We set a variable for TweenService

            local Part = workspace.Part --- this is the part we will tween

            --- To begin with we first need to set a variable for our Tweening Information ---

            local TweeningInformation = TweenInfo.new(
            1, --- the amount taken to complete the Tween
            Enum.EasingStyle.Linear, ---- This is how the Tween will act
            Enum.EasingDirection.Out, --- This controls the direction of a tween
            10, --- number of times it will repeat
            false, --- Bool reverse which means if you want the tween to go back to its original state
            0  --- the number of delay you want
        )

        --- On an important note, you need to seperate it with commas - "," ----


        --- Now that we have set up our Tweening Information we need a Dicctionary property table ---

        local TweeningProperties = {
            Position = Vector3.new(10,10,10); --- The position will move to this location
            Color = Color3.fromRGB(255, 0, 0); --- We tween our Color as well, in this example we are tweening it to red
            Size = Vector3.new(15,15,15) --- we will also change the size
        }

        --- You need to also spell these properties correctly, otherwise you will be riddled with errors ---
        --- Also, you will need to seperate it with a semi-colon - ";" ---


        --- Okay now that we created our variables we now need to actually create the tween ----

        local PartTween = TweenService:Create(Part, TweeningInformation, TweeningProperties)

        --- Okay so we use the built-in function in TweenService to create our tween(TweenService:Create())
        --- Within the paranthesis you need first - the Object you are tweening, Second - The Tweening Information, and Third - the Properties of that object you are tweening 

        --- Now there is only one thing left, to actually play the tween

            PartTween:Play()
            ```
            ]]

		};

		Rela={
			'https://developer.roblox.com/en-us/api-reference/function/GuiObject/TweenSizeAndPosition';
			'https://developer.roblox.com/en-us/api-reference/enum/EasingDirection';
			'https://developer.roblox.com/en-us/api-reference/enum/EasingStyle';
			'https://developer.roblox.com/en-us/api-reference/class/ServiceProvider';
			'https://developer.roblox.com/en-us/api-reference/enum/TweenStatus';
			'https://developer.roblox.com/en-us/api-reference/function/GuiObject/TweenPosition';
			'https://developer.roblox.com/en-us/api-reference/function/GuiObject/TweenSize';
			'https://developer.roblox.com/en-us/articles/GUI-Animations';
			'https://developer.roblox.com/en-us/api-reference/class/TweenBase';
			'https://developer.roblox.com/en-us/api-reference/class/Tween';
			'https://developer.roblox.com/en-us/api-reference/class/RunService';
			'https://developer.roblox.com/en-us/api-reference/class/Animator'
		};

		Meta={

			"runservice"; 'animation'; 'easing';  'interpolate'; "smooth"; 'property'; 'move' 

		}

	};

	['bit32']={
		Assocs={
			'https://developer.roblox.com/en-us/api-reference/lua-docs/bit32';
		};

		Desc={
			"Back-ported library providing functions to perform bitwise operations."
		};

		lDesc={
			"This section is blank, you may contribute by filling it out if you're qualified."
		};

		Ex={
			"This section is blank, you may contribute by filling it out if you're qualified."
		};

		Rela={
			"This section is blank, you may contribute by filling it out if you're qualified."
		};

		Meta={
			"32bit";"64";"32";"64bit";"byte";"5.2"
		};
	};
	["Instance.new"]={
		Assocs={
			'https://developer.roblox.com/en-us/api-reference/class/Instance';
		};

		Desc={
			"Instances are the base for classes in Roblox Studio, you can create an instance using Instance.new."
		};

		lDesc={
			"This section is blank, you may contribute by filling it out if you're qualified."
		};

		Ex={
			[[Instance.new('Part')
			Formula: Instance.new(class name)]]
		};

		Rela={
			"This section is blank, you may contribute by filling it out if you're qualified."
		};

		Meta={
			"Initiate";"Ininitation";"Instant";"Instance";"Initialize";"Initialization";"Create";
		};
	}
}

return(module)