.class public final Lorg/gnucash/android/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final CREATE_ACCOUNT:Ljava/lang/String; = "org.gnucash.android.permission.CREATE_ACCOUNT"

.field public static final RECORD_TRANSACTION:Ljava/lang/String; = "org.gnucash.android.permission.RECORD_TRANSACTION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
