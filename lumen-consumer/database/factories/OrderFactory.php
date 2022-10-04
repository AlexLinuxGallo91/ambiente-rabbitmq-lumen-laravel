<?php

namespace Database\Factories;

use App\Models\Order;
use Illuminate\Database\Eloquent\Factories\Factory;

class OrderFactory extends Factory
{
    protected $model = Order::class;

    public function definition(): array
    {
        return [
            'user_id' => $this->faker->numberBetween(1, 50),
            'product_name' => $this->faker->word(),
            'quantity' => $this->faker->numberBetween(1, 10),
            'total_price' => $this->faker->randomFloat(min: 1, max: 5000),
        ];
    }
}
