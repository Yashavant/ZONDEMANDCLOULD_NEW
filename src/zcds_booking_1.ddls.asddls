@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_BOOKING_1 as select from /dmo/a_booking_d
{
    key booking_uuid as BookingUuid,
    parent_uuid as ParentUuid,
    booking_id as BookingId,
    booking_date as BookingDate,
    customer_id as CustomerId,
    carrier_id as CarrierId,
    connection_id as ConnectionId,
    flight_date as FlightDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    flight_price as FlightPrice,
    currency_code as CurrencyCode,
    booking_status as BookingStatus,
    local_last_changed_at as LocalLastChangedAt
}
