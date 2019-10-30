.class public final enum Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
.super Ljava/lang/Enum;
.source "CapabilityBooleanType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field public static final enum FALSE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field public static final enum TRUE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field public static final enum UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 35
    new-instance v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v4, v3}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->FALSE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 36
    new-instance v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    const-string v1, "TRUE"

    invoke-direct {v0, v1, v5, v4}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->TRUE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    sget-object v1, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->FALSE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->TRUE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->$VALUES:[Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->value:I

    .line 43
    return-void
.end method

.method public static fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1
    .param p0, "boolValue"    # Z

    .prologue
    .line 64
    if-eqz p0, :cond_0

    .line 65
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->TRUE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->FALSE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    goto :goto_0
.end method

.method public static fromValue(I)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 51
    packed-switch p0, :pswitch_data_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    goto :goto_0

    .line 56
    :pswitch_1
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->FALSE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    goto :goto_0

    .line 58
    :pswitch_2
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->TRUE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public static values()[Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->$VALUES:[Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    invoke-virtual {v0}, [Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->value:I

    return v0
.end method

.method public isFalse()Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->getValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->getValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
