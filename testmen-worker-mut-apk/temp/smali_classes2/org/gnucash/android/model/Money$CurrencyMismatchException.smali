.class public Lorg/gnucash/android/model/Money$CurrencyMismatchException;
.super Ljava/lang/IllegalArgumentException;
.source "Money.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/model/Money;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CurrencyMismatchException"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/model/Money;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/model/Money;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/model/Money;

    .prologue
    .line 510
    iput-object p1, p0, Lorg/gnucash/android/model/Money$CurrencyMismatchException;->this$0:Lorg/gnucash/android/model/Money;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    const-string v0, "Cannot perform operation on Money instances with different currencies"

    return-object v0
.end method
