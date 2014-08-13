.class public interface abstract Lcom/sec/android/app/contacts/IAnimationAdapter;
.super Ljava/lang/Object;
.source "IAnimationAdapter.java"


# static fields
.field public static final ANIMATION_TYPE_ENTER:I = 0x1

.field public static final ANIMATION_TYPE_EXIT:I = 0x2

.field public static final ANIMATION_TYPE_NOINIT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AnimationLoader"


# virtual methods
.method public abstract setAnimation(Landroid/view/View;I)Lcom/sec/android/app/contacts/IAnimationAdapter;
.end method

.method public abstract setOverridePendingTransition(I)Z
.end method

.method public abstract start()Z
.end method
