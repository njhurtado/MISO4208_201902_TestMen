.class public abstract Lorg/gnucash/android/db/DatabaseSchema$TransactionEntry;
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
    name = "TransactionEntry"
.end annotation


# static fields
.field public static final COLUMN_COMMODITY_UID:Ljava/lang/String; = "commodity_uid"

.field public static final COLUMN_CURRENCY:Ljava/lang/String; = "currency_code"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "name"

.field public static final COLUMN_EXPORTED:Ljava/lang/String; = "is_exported"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_NOTES:Ljava/lang/String; = "description"

.field public static final COLUMN_SCHEDX_ACTION_UID:Ljava/lang/String; = "scheduled_action_uid"

.field public static final COLUMN_TEMPLATE:Ljava/lang/String; = "is_template"

.field public static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final INDEX_UID:Ljava/lang/String; = "transaction_uid_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "transactions"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
