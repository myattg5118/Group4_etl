with 

source as (

    select * from {{ source('Parking_data', 'Parking_311') }}

),

renamed as (

    select
        plate,
        state,
        issue_date,
        violation_time,
        violation,
        fine_amount,
        penalty_amount,
        interest_amount,
        reduction_amount,
        payment_amount,
        amount_due,
        county,
        violation_status

    from source

)

select * from renamed
