.class public interface abstract Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;
.super Ljava/lang/Object;
.source "GeoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tech/freak/wizardpager/ui/GeoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationUpdatesHandler"
.end annotation


# virtual methods
.method public abstract setLocationListener(Lcom/tech/freak/wizardpager/model/SimpleLocationListener;)V
.end method

.method public abstract startLocationUpdates()V
.end method

.method public abstract stopLocationUpdates()V
.end method
