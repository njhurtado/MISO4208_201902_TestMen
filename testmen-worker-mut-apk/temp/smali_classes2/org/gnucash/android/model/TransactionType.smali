.class public final enum Lorg/gnucash/android/model/TransactionType;
.super Ljava/lang/Enum;
.source "TransactionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/gnucash/android/model/TransactionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/gnucash/android/model/TransactionType;

.field public static final enum CREDIT:Lorg/gnucash/android/model/TransactionType;

.field public static final enum DEBIT:Lorg/gnucash/android/model/TransactionType;


# instance fields
.field private opposite:Lorg/gnucash/android/model/TransactionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lorg/gnucash/android/model/TransactionType;

    const-string v1, "DEBIT"

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    new-instance v0, Lorg/gnucash/android/model/TransactionType;

    const-string v1, "CREDIT"

    invoke-direct {v0, v1, v3}, Lorg/gnucash/android/model/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/gnucash/android/model/TransactionType;

    sget-object v1, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/gnucash/android/model/TransactionType;->$VALUES:[Lorg/gnucash/android/model/TransactionType;

    .line 31
    sget-object v0, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    sget-object v1, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    iput-object v1, v0, Lorg/gnucash/android/model/TransactionType;->opposite:Lorg/gnucash/android/model/TransactionType;

    .line 32
    sget-object v0, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    sget-object v1, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    iput-object v1, v0, Lorg/gnucash/android/model/TransactionType;->opposite:Lorg/gnucash/android/model/TransactionType;

    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/TransactionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/gnucash/android/model/TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/TransactionType;

    return-object v0
.end method

.method public static values()[Lorg/gnucash/android/model/TransactionType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/gnucash/android/model/TransactionType;->$VALUES:[Lorg/gnucash/android/model/TransactionType;

    invoke-virtual {v0}, [Lorg/gnucash/android/model/TransactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/gnucash/android/model/TransactionType;

    return-object v0
.end method


# virtual methods
.method public invert()Lorg/gnucash/android/model/TransactionType;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/gnucash/android/model/TransactionType;->opposite:Lorg/gnucash/android/model/TransactionType;

    return-object v0
.end method
