.class public abstract Lorg/gnucash/android/db/DatabaseSchema$SplitEntry;
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
    name = "SplitEntry"
.end annotation


# static fields
.field public static final COLUMN_ACCOUNT_UID:Ljava/lang/String; = "account_uid"

.field public static final COLUMN_MEMO:Ljava/lang/String; = "memo"

.field public static final COLUMN_QUANTITY_DENOM:Ljava/lang/String; = "quantity_denom"

.field public static final COLUMN_QUANTITY_NUM:Ljava/lang/String; = "quantity_num"

.field public static final COLUMN_RECONCILE_DATE:Ljava/lang/String; = "reconcile_date"

.field public static final COLUMN_RECONCILE_STATE:Ljava/lang/String; = "reconcile_state"

.field public static final COLUMN_TRANSACTION_UID:Ljava/lang/String; = "transaction_uid"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_VALUE_DENOM:Ljava/lang/String; = "value_denom"

.field public static final COLUMN_VALUE_NUM:Ljava/lang/String; = "value_num"

.field public static final INDEX_UID:Ljava/lang/String; = "split_uid_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "splits"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
