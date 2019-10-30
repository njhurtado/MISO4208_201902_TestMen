.class public interface abstract Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;
.super Ljava/lang/Object;
.source "ObservationConstants.java"


# static fields
.field public static final HEADER_POLL_TIMEOUT:Ljava/lang/String; = "PollTimeout"

.field public static final HEADER_SUBSCRIPTIONID:Ljava/lang/String; = "SubscriptionId"

.field public static final NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field public static final N_EVENT:Ljavax/xml/namespace/QName;

.field public static final N_EVENTBUNDLE:Ljavax/xml/namespace/QName;

.field public static final N_EVENTDATE:Ljavax/xml/namespace/QName;

.field public static final N_EVENTDISCOVERY:Ljavax/xml/namespace/QName;

.field public static final N_EVENTINFO:Ljavax/xml/namespace/QName;

.field public static final N_EVENTMIXINNODETYPE:Ljavax/xml/namespace/QName;

.field public static final N_EVENTPRIMARYNODETYPE:Ljavax/xml/namespace/QName;

.field public static final N_EVENTTYPE:Ljavax/xml/namespace/QName;

.field public static final N_EVENTUSERDATA:Ljavax/xml/namespace/QName;

.field public static final N_EVENTUSERID:Ljavax/xml/namespace/QName;

.field public static final SUBSCRIPTIONDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final XML_EVENT:Ljava/lang/String; = "event"

.field public static final XML_EVENTBUNDLE:Ljava/lang/String; = "eventbundle"

.field public static final XML_EVENTDATE:Ljava/lang/String; = "eventdate"

.field public static final XML_EVENTDISCOVERY:Ljava/lang/String; = "eventdiscovery"

.field public static final XML_EVENTIDENTIFIER:Ljava/lang/String; = "eventidentifier"

.field public static final XML_EVENTINFO:Ljava/lang/String; = "eventinfo"

.field public static final XML_EVENTMIXINNODETYPE:Ljava/lang/String; = "eventmixinnodetype"

.field public static final XML_EVENTPRIMARNODETYPE:Ljava/lang/String; = "eventprimarynodetype"

.field public static final XML_EVENTSWITHLOCALFLAG:Ljava/lang/String; = "eventswithlocalflag"

.field public static final XML_EVENTSWITHTYPES:Ljava/lang/String; = "eventswithnodetypes"

.field public static final XML_EVENTTYPE:Ljava/lang/String; = "eventtype"

.field public static final XML_EVENTUSERDATA:Ljava/lang/String; = "eventuserdata"

.field public static final XML_EVENTUSERID:Ljava/lang/String; = "eventuserid"

.field public static final XML_EVENT_LOCAL:Ljava/lang/String; = "local"

.field public static final XML_EVENT_TRANSACTION_ID:Ljava/lang/String; = "transactionid"

.field public static final XML_FILTER:Ljava/lang/String; = "filter"

.field public static final XML_NODETYPE_NAME:Ljava/lang/String; = "nodetype-name"

.field public static final XML_NOLOCAL:Ljava/lang/String; = "nolocal"

.field public static final XML_SUBSCRIPTION:Ljava/lang/String; = "subscription"

.field public static final XML_SUBSCRIPTIONID:Ljava/lang/String; = "subscriptionid"

.field public static final XML_SUBSCRIPTIONINFO:Ljava/lang/String; = "subscriptioninfo"

.field public static final XML_UUID:Ljava/lang/String; = "uuid"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const-string v0, "dcr"

    const-string v1, "http://www.day.com/jcr/webdav/1.0"

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 84
    new-instance v0, Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->N_EVENT:Ljavax/xml/namespace/QName;

    .line 85
    new-instance v0, Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventbundle"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->N_EVENTBUNDLE:Ljavax/xml/namespace/QName;

    .line 86
    new-instance v0, Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventdate"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->N_EVENTDATE:Ljavax/xml/namespace/QName;

    .line 87
    new-instance v0, Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventdiscovery"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->N_EVENTDISCOVERY:Ljavax/xml/namespace/QName;

    .line 88
    new-instance v0, Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventinfo"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->N_EVENTINFO:Ljavax/xml/namespace/QName;

    .line 89
    new-instance v0, Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventmixinnodetype"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->N_EVENTMIXINNODETYPE:Ljavax/xml/namespace/QName;

    .line 90
    new-instance v0, Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventprimarynodetype"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->N_EVENTPRIMARYNODETYPE:Ljavax/xml/namespace/QName;

    .line 91
    new-instance v0, Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventtype"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->N_EVENTTYPE:Ljavax/xml/namespace/QName;

    .line 92
    new-instance v0, Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventuserdata"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->N_EVENTUSERDATA:Ljavax/xml/namespace/QName;

    .line 93
    new-instance v0, Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventuserid"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->N_EVENTUSERID:Ljavax/xml/namespace/QName;

    .line 100
    const-string v0, "subscriptiondiscovery"

    sget-object v1, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->SUBSCRIPTIONDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-void
.end method
