.class public abstract Lorg/gnucash/android/db/DatabaseSchema$BudgetAmountEntry;
.super Ljava/lang/Object;
.source "DatabaseSchema.java"

# interfaces
.implements Lorg/gnucash/android/db/DatabaseSchema$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/db/DatabaseSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BudgetAmountEntry"
.end annotation


# static fields
.field public static final COLUMN_ACCOUNT_UID:Ljava/lang/String; = "account_uid"

.field public static final COLUMN_AMOUNT_DENOM:Ljava/lang/String; = "amount_denom"

.field public static final COLUMN_AMOUNT_NUM:Ljava/lang/String; = "amount_num"

.field public static final COLUMN_BUDGET_UID:Ljava/lang/String; = "budget_uid"

.field public static final COLUMN_PERIOD_NUM:Ljava/lang/String; = "period_num"

.field public static final INDEX_UID:Ljava/lang/String; = "budget_amounts_uid_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "budget_amounts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
