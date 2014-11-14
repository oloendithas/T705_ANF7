.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$3;,
        Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;,
        Landroid/widget/RemoteViews$SetLaunchPendingIntent;,
        Landroid/widget/RemoteViews$MemoryUsageCounter;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$AddOuterGlowAction;,
        Landroid/widget/RemoteViews$AddLinearGradientAction;,
        Landroid/widget/RemoteViews$AddStrokeAction;,
        Landroid/widget/RemoteViews$AddInnerShadowAction;,
        Landroid/widget/RemoteViews$AddOuterShadowAction;,
        Landroid/widget/RemoteViews$ClearAllTextEffectAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$ViewGroupAction;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$ReflectionActionWithoutParams;,
        Landroid/widget/RemoteViews$SetDrawableParameters;,
        Landroid/widget/RemoteViews$SetOnClickPendingIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SetOnClickFillInIntent;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$OnClickHandler;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$RemoteView;,
        Landroid/widget/RemoteViews$MutablePair;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

.field static final EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field private static final MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final MODE_NORMAL:I = 0x0

.field private static final SFE_STARTING_TAG:I = 0x12

.field private static mIsLongClick:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInvokeArgsTls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMethods:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/RemoteViews$MutablePair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sMethodsLock:[Ljava/lang/Object;


# instance fields
.field private isNotification:Z

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field private mIsRoot:Z

.field private mIsWidgetCollectionChild:Z

.field private mLandscape:Landroid/widget/RemoteViews;

.field private final mLayoutId:I

.field private mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

.field private final mPackage:Ljava/lang/String;

.field private final mPair:Landroid/widget/RemoteViews$MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/RemoteViews$MutablePair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mPortrait:Landroid/widget/RemoteViews;

.field private mUser:Landroid/os/UserHandle;

.field private stringNamesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 163
    new-instance v0, Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {v0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;

    .line 214
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/widget/RemoteViews;->sMethodsLock:[Ljava/lang/Object;

    .line 215
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    .line 217
    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sInvokeArgsTls:Ljava/lang/ThreadLocal;

    .line 3046
    new-instance v0, Landroid/widget/RemoteViews$2;

    invoke-direct {v0}, Landroid/widget/RemoteViews$2;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1982
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1983
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 14
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RemoteViews;->mUser:Landroid/os/UserHandle;

    .line 130
    iput-boolean v9, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 144
    iput-object v8, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 145
    iput-object v8, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 154
    iput-boolean v10, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 174
    sget-boolean v7, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v7, :cond_82

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :goto_1d
    iput-object v7, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    .line 179
    iput-boolean v10, p0, Landroid/widget/RemoteViews;->isNotification:Z

    .line 254
    new-instance v7, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v7, v8, v8}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v7, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    .line 1986
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1989
    .local v3, "mode":I
    if-nez p2, :cond_84

    .line 1990
    new-instance v7, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v7, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object v7, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1996
    :goto_35
    if-nez v3, :cond_18d

    .line 1997
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 1998
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1999
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v9, :cond_8b

    move v7, v9

    :goto_4a
    iput-boolean v7, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 2001
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2002
    .local v0, "count":I
    if-lez v0, :cond_1af

    .line 2003
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 2004
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    if-ge v1, v0, :cond_1af

    .line 2005
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2006
    .local v5, "tag":I
    packed-switch v5, :pswitch_data_1e8

    .line 2078
    :pswitch_63
    new-instance v7, Landroid/widget/RemoteViews$ActionException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "mode":I
    .end local v5    # "tag":I
    :cond_82
    move-object v7, v8

    .line 174
    goto :goto_1d

    .line 1992
    .restart local v3    # "mode":I
    :cond_84
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1993
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->setNotRoot()V

    goto :goto_35

    :cond_8b
    move v7, v10

    .line 1999
    goto :goto_4a

    .line 2008
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v5    # "tag":I
    :pswitch_8d
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2004
    :goto_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 2011
    :pswitch_9a
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetDrawableParameters;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2014
    :pswitch_a5
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2017
    :pswitch_b0
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ViewGroupAction;

    iget-object v10, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v9, p0, p1, v10}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2020
    :pswitch_bd
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2023
    :pswitch_c8
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2026
    :pswitch_d3
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2029
    :pswitch_de
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2032
    :pswitch_e9
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2035
    :pswitch_f4
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2038
    :pswitch_ff
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2041
    :pswitch_10a
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2044
    :pswitch_115
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    .line 2047
    :pswitch_121
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    .line 2051
    :pswitch_12d
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetLaunchPendingIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetLaunchPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    .line 2054
    :pswitch_139
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    .line 2059
    :pswitch_145
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ClearAllTextEffectAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$ClearAllTextEffectAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    .line 2062
    :pswitch_151
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$AddOuterShadowAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$AddOuterShadowAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    .line 2065
    :pswitch_15d
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$AddInnerShadowAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$AddInnerShadowAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    .line 2068
    :pswitch_169
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$AddStrokeAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$AddStrokeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    .line 2071
    :pswitch_175
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$AddOuterGlowAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$AddOuterGlowAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    .line 2074
    :pswitch_181
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$AddLinearGradientAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$AddLinearGradientAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    .line 2084
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v5    # "tag":I
    :cond_18d
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v9, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v7, p1, v9}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v7, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 2085
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v9, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v7, p1, v9}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v7, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 2086
    iget-object v7, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 2087
    iget-object v7, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    iput v7, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 2090
    :cond_1af
    sget-boolean v7, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v7, :cond_1dd

    .line 2091
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/RemoteViews;->isNotification:Z

    .line 2092
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2094
    .local v4, "size":I
    if-lez v4, :cond_1dd

    .line 2095
    iget-object v7, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 2096
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1cb
    if-ge v1, v4, :cond_1dd

    .line 2097
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2098
    .local v2, "key":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v6

    .line 2099
    .local v6, "value":Ljava/lang/CharSequence;
    iget-object v7, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    add-int/lit8 v1, v1, 0x1

    goto :goto_1cb

    .line 2104
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/CharSequence;
    .end local v4    # "size":I
    .end local v6    # "value":Ljava/lang/CharSequence;
    :cond_1dd
    new-instance v7, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v7, p0, v8}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v7, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 2105
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    .line 2106
    return-void

    .line 2006
    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_a5
        :pswitch_9a
        :pswitch_b0
        :pswitch_bd
        :pswitch_c8
        :pswitch_63
        :pswitch_d3
        :pswitch_de
        :pswitch_e9
        :pswitch_f4
        :pswitch_115
        :pswitch_ff
        :pswitch_10a
        :pswitch_121
        :pswitch_139
        :pswitch_12d
        :pswitch_145
        :pswitch_151
        :pswitch_15d
        :pswitch_169
        :pswitch_181
        :pswitch_175
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/RemoteViews$BitmapCache;
    .param p3, "x2"    # Landroid/widget/RemoteViews$1;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "landscape"    # Landroid/widget/RemoteViews;
    .param p2, "portrait"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mUser:Landroid/os/UserHandle;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 144
    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 145
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 154
    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 174
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_34

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_1d
    iput-object v0, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    .line 179
    iput-boolean v2, p0, Landroid/widget/RemoteViews;->isNotification:Z

    .line 254
    new-instance v0, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v0, v1, v1}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    .line 1954
    if-eqz p1, :cond_2c

    if-nez p2, :cond_36

    .line 1955
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    move-object v0, v1

    .line 174
    goto :goto_1d

    .line 1957
    :cond_36
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4c

    .line 1958
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must share the same package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1960
    :cond_4c
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 1961
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1963
    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 1964
    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 1967
    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 1969
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1970
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    .line 1971
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    .line 1973
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    .line 1974
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "layoutId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mUser:Landroid/os/UserHandle;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 144
    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 145
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 154
    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 174
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_1d
    iput-object v0, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    .line 179
    iput-boolean v2, p0, Landroid/widget/RemoteViews;->isNotification:Z

    .line 254
    new-instance v0, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v0, v1, v1}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    .line 1928
    iput-object p1, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 1929
    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1930
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1933
    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 1934
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    .line 1935
    return-void

    :cond_3e
    move-object v0, v1

    .line 174
    goto :goto_1d
.end method

.method static synthetic access$100(Landroid/widget/RemoteViews;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViews;

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    return v0
.end method

.method static synthetic access$1000()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-static {p0}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Class;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViews;

    .prologue
    .line 82
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 82
    invoke-static {p0}, Landroid/widget/RemoteViews;->wrapArg(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method private addAction(Landroid/widget/RemoteViews$Action;)V
    .registers 4
    .param p1, "a"    # Landroid/widget/RemoteViews$Action;

    .prologue
    .line 2198
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2199
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews specifying separate landscape and portrait layouts cannot be modified. Instead, fully configure the landscape and portrait layouts individually before constructing the combined layout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2203
    :cond_e
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_19

    .line 2204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 2206
    :cond_19
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 2210
    return-void
.end method

.method private configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "rv"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1366
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$BitmapCache;->assimilate(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1367
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1368
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setNotRoot()V

    .line 1369
    return-void
.end method

.method private getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 824
    .local p3, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 826
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v5, Landroid/widget/RemoteViews;->sMethodsLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 827
    :try_start_7
    sget-object v4, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 828
    .local v3, "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    if-nez v3, :cond_1b

    .line 829
    new-instance v3, Landroid/util/ArrayMap;

    .end local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 830
    .restart local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    sget-object v4, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_1b
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    iput-object p2, v4, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    .line 834
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    iput-object p3, v4, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    .line 836
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_6e

    .line 837
    .local v2, "method":Ljava/lang/reflect/Method;
    if-nez v2, :cond_b5

    .line 839
    if-nez p3, :cond_71

    .line 840
    const/4 v4, 0x0

    :try_start_30
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_30 .. :try_end_35} :catch_7c
    .catchall {:try_start_30 .. :try_end_35} :catchall_6e

    move-result-object v2

    .line 849
    :goto_36
    :try_start_36
    const-class v4, Landroid/view/RemotableViewMethod;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_ad

    .line 850
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can\'t use method with RemoteViews: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 857
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    :catchall_6e
    move-exception v4

    monitor-exit v5
    :try_end_70
    .catchall {:try_start_36 .. :try_end_70} :catchall_6e

    throw v4

    .line 842
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    :cond_71
    const/4 v4, 0x1

    :try_start_72
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p3, v4, v6

    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_72 .. :try_end_7a} :catch_7c
    .catchall {:try_start_72 .. :try_end_7a} :catchall_6e

    move-result-object v2

    goto :goto_36

    .line 844
    :catch_7c
    move-exception v0

    .line 845
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_7d
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t have method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 855
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_ad
    new-instance v4, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v4, p2, p3}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    :cond_b5
    monitor-exit v5
    :try_end_b6
    .catchall {:try_start_7d .. :try_end_b6} :catchall_6e

    .line 859
    return-object v2
.end method

.method private static getParameters(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 863
    .local p0, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_5

    const-string v0, "()"

    .line 864
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2874
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2875
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2876
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 2877
    iget-object p0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 2882
    .end local v0    # "orientation":I
    .end local p0    # "this":Landroid/widget/RemoteViews;
    :cond_15
    :goto_15
    return-object p0

    .line 2879
    .restart local v0    # "orientation":I
    .restart local p0    # "this":Landroid/widget/RemoteViews;
    :cond_16
    iget-object p0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    goto :goto_15
.end method

.method private static getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000

    .line 809
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 811
    .local v0, "appScale":F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 812
    .local v1, "pos":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 814
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 815
    .local v2, "rect":Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 816
    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 817
    aget v3, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 818
    aget v3, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 819
    return-object v2
.end method

.method private hasLandscapeAndPortraitLayouts()Z
    .registers 2

    .prologue
    .line 1943
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 2957
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1f

    .line 2958
    if-nez p3, :cond_8

    sget-object p3, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    .line 2959
    :cond_8
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2960
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 2961
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 2962
    .local v0, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2960
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2965
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1f
    return-void
.end method

.method private prepareContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2969
    iget-object v2, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 2971
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 2973
    const/4 v3, 0x4

    :try_start_5
    iget-object v4, p0, Landroid/widget/RemoteViews;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v0

    .line 2983
    .local v0, "c":Landroid/content/Context;
    :goto_b
    return-object v0

    .line 2975
    .end local v0    # "c":Landroid/content/Context;
    :catch_c
    move-exception v1

    .line 2976
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    move-object v0, p1

    .line 2978
    .restart local v0    # "c":Landroid/content/Context;
    goto :goto_b

    .line 2980
    .end local v0    # "c":Landroid/content/Context;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2d
    move-object v0, p1

    .restart local v0    # "c":Landroid/content/Context;
    goto :goto_b
.end method

.method private recalculateMemoryUsage()V
    .registers 5

    .prologue
    .line 2146
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;->clear()V

    .line 2148
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_34

    .line 2150
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_28

    .line 2151
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2152
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_28

    .line 2153
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 2152
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 2156
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_28
    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v2, :cond_33

    .line 2157
    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 2164
    :cond_33
    :goto_33
    return-void

    .line 2160
    :cond_34
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 2161
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 2162
    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    goto :goto_33
.end method

.method private setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 5
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    .line 2170
    iput-object p1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 2171
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2172
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_2d

    .line 2173
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2174
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_2d

    .line 2175
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$Action;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2174
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2179
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_23
    iget-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2180
    iget-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2182
    :cond_2d
    return-void
.end method

.method private updateResourceMap(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    iget-object v3, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 209
    .local v1, "name":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 210
    .local v2, "stringName":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->addNotificationString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 212
    .end local v1    # "name":Ljava/lang/CharSequence;
    .end local v2    # "stringName":Ljava/lang/CharSequence;
    :cond_26
    return-void
.end method

.method private static wrapArg(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 868
    sget-object v1, Landroid/widget/RemoteViews;->sInvokeArgsTls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 869
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 870
    return-object v0
.end method


# virtual methods
.method public addInnerShadowTextEffect(IFFFIF)V
    .registers 15
    .param p1, "viewId"    # I
    .param p2, "angle"    # F
    .param p3, "offset"    # F
    .param p4, "softness"    # F
    .param p5, "color"    # I
    .param p6, "blendingOpacity"    # F

    .prologue
    .line 2375
    new-instance v0, Landroid/widget/RemoteViews$AddInnerShadowAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$AddInnerShadowAction;-><init>(Landroid/widget/RemoteViews;IFFFIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2376
    return-void
.end method

.method public addLinearGradientTextEffect(IFF[I[F[FF)V
    .registers 17
    .param p1, "viewId"    # I
    .param p2, "angle"    # F
    .param p3, "scale"    # F
    .param p4, "colors"    # [I
    .param p5, "alphas"    # [F
    .param p6, "positions"    # [F
    .param p7, "blendingOpacity"    # F

    .prologue
    .line 2418
    new-instance v0, Landroid/widget/RemoteViews$AddLinearGradientAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/widget/RemoteViews$AddLinearGradientAction;-><init>(Landroid/widget/RemoteViews;IFF[I[F[FF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2419
    return-void
.end method

.method public addOuterGlowTextEffect(IFIF)V
    .registers 11
    .param p1, "viewId"    # I
    .param p2, "size"    # F
    .param p3, "color"    # I
    .param p4, "blendingOpacity"    # F

    .prologue
    .line 2401
    new-instance v0, Landroid/widget/RemoteViews$AddOuterGlowAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AddOuterGlowAction;-><init>(Landroid/widget/RemoteViews;IFIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2402
    return-void
.end method

.method public addOuterShadowTextEffect(IFFFIF)V
    .registers 15
    .param p1, "viewId"    # I
    .param p2, "angle"    # F
    .param p3, "offset"    # F
    .param p4, "softness"    # F
    .param p5, "color"    # I
    .param p6, "blendingOpacity"    # F

    .prologue
    .line 2359
    new-instance v0, Landroid/widget/RemoteViews$AddOuterShadowAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$AddOuterShadowAction;-><init>(Landroid/widget/RemoteViews;IFFFIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2360
    return-void
.end method

.method public addStrokeTextEffect(IFIF)V
    .registers 11
    .param p1, "viewId"    # I
    .param p2, "size"    # F
    .param p3, "color"    # I
    .param p4, "blendingOpacity"    # F

    .prologue
    .line 2388
    new-instance v0, Landroid/widget/RemoteViews$AddStrokeAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AddStrokeAction;-><init>(Landroid/widget/RemoteViews;IFIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2389
    return-void
.end method

.method public addView(ILandroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "nestedView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2223
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2224
    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2897
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 2902
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 2904
    .local v3, "rvToApply":Landroid/widget/RemoteViews;
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Landroid/widget/RemoteViews;->isNotification:Z

    if-eqz v4, :cond_f

    .line 2906
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->updateResourceMap(Landroid/content/Context;)V

    .line 2911
    :cond_f
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->prepareContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2913
    .local v0, "c":Landroid/content/Context;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 2916
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2917
    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 2919
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2921
    .local v2, "result":Landroid/view/View;
    invoke-direct {v3, v2, p2, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2923
    return-object v2
.end method

.method public clearAllTextEffect(I)V
    .registers 3
    .param p1, "viewId"    # I

    .prologue
    .line 2343
    new-instance v0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$ClearAllTextEffectAction;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2344
    return-void
.end method

.method public clone()Landroid/widget/RemoteViews;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2111
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2112
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2113
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 2996
    const/4 v0, 0x0

    return v0
.end method

.method public estimateMemoryUsage()I
    .registers 2

    .prologue
    .line 2189
    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public getLayoutId()I
    .registers 2

    .prologue
    .line 2128
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2117
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public mergeRemoteViews(Landroid/widget/RemoteViews;)V
    .registers 12
    .param p1, "newRv"    # Landroid/widget/RemoteViews;

    .prologue
    .line 357
    if-nez p1, :cond_3

    .line 395
    :cond_2
    :goto_2
    return-void

    .line 361
    :cond_3
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 363
    .local v1, "copy":Landroid/widget/RemoteViews;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 364
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/widget/RemoteViews$Action;>;"
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v8, :cond_17

    .line 365
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 368
    :cond_17
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 369
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v2, :cond_32

    .line 370
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 371
    .local v0, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 374
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    :cond_32
    iget-object v7, v1, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 375
    .local v7, "newActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews$Action;>;"
    if-eqz v7, :cond_2

    .line 376
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 377
    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v2, :cond_78

    .line 378
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 379
    .restart local v0    # "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v6

    .line 381
    .local v6, "mergeBehavior":I
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    if-nez v6, :cond_6b

    .line 382
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_6b
    if-eqz v6, :cond_70

    const/4 v8, 0x1

    if-ne v6, v8, :cond_75

    .line 388
    :cond_70
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 393
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "mergeBehavior":I
    :cond_78
    new-instance v8, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v8}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v8, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 394
    iget-object v8, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    goto/16 :goto_2
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .registers 3
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 2992
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 2935
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2936
    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 2940
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2945
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2946
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    if-eq v1, v2, :cond_1c

    .line 2947
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2952
    :cond_1c
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->prepareContext(Landroid/content/Context;)Landroid/content/Context;

    .line 2953
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p2, v1, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2954
    return-void
.end method

.method public removeAllViews(I)V
    .registers 4
    .param p1, "viewId"    # I

    .prologue
    .line 2233
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2234
    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2828
    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2829
    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 2697
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2698
    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/Bundle;

    .prologue
    .line 2839
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2840
    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .prologue
    .line 2708
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2709
    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .prologue
    .line 2774
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x8

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2775
    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 2796
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2797
    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .registers 7
    .param p1, "viewId"    # I
    .param p2, "base"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "started"    # Z

    .prologue
    .line 2477
    const-string/jumbo v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 2478
    const-string/jumbo v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 2479
    const-string/jumbo v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 2480
    return-void
.end method

.method public setContentDescription(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 2860
    const-string/jumbo v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 2861
    return-void
.end method

.method public setDisplayedChild(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "childIndex"    # I

    .prologue
    .line 2261
    const-string/jumbo v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2262
    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .registers 11
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 2763
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2764
    return-void
.end method

.method public setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V
    .registers 15
    .param p1, "viewId"    # I
    .param p2, "targetBackground"    # Z
    .param p3, "alpha"    # I
    .param p4, "colorFilter"    # I
    .param p5, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .param p6, "level"    # I

    .prologue
    .line 2588
    new-instance v0, Landroid/widget/RemoteViews$SetDrawableParameters;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2590
    return-void
.end method

.method public setEmptyView(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "emptyViewId"    # I

    .prologue
    .line 2459
    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2460
    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 2752
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2753
    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2449
    const-string/jumbo v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2450
    return-void
.end method

.method public setImageViewResource(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "srcId"    # I

    .prologue
    .line 2429
    const-string/jumbo v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2430
    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2439
    const-string/jumbo v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    .line 2440
    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 2730
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2731
    return-void
.end method

.method public setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/content/Intent;

    .prologue
    .line 2850
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xe

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2851
    return-void
.end method

.method setIsWidgetCollectionChild(Z)V
    .registers 2
    .param p1, "isWidgetCollectionChild"    # Z

    .prologue
    .line 2139
    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 2140
    return-void
.end method

.method public setLabelFor(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "labeledId"    # I

    .prologue
    .line 2870
    const-string/jumbo v0, "setLabelFor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2871
    return-void
.end method

.method public setLaunchPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3062
    new-instance v0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetLaunchPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3063
    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .registers 11
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 2741
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2742
    return-void
.end method

.method setNotRoot()V
    .registers 2

    .prologue
    .line 1372
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 1373
    return-void
.end method

.method public setOnClickFillInIntent(ILandroid/content/Intent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 2557
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2558
    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2518
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2519
    return-void
.end method

.method public setOnLongClickPendingIntent(Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 11
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "viewId"    # I
    .param p3, "downPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "upPendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3140
    new-instance v0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3141
    return-void
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "pendingIntentTemplate"    # Landroid/app/PendingIntent;

    .prologue
    .line 2534
    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2535
    return-void
.end method

.method public setProgressBar(IIIZ)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "max"    # I
    .param p3, "progress"    # I
    .param p4, "indeterminate"    # Z

    .prologue
    .line 2497
    const-string/jumbo v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 2498
    if-nez p4, :cond_14

    .line 2499
    const-string/jumbo v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2500
    const-string/jumbo v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2502
    :cond_14
    return-void
.end method

.method public setRelativeScrollPosition(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "offset"    # I

    .prologue
    .line 2673
    const-string/jumbo v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2674
    return-void
.end method

.method public setRemoteAdapter(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2616
    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 2617
    return-void
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2628
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2629
    return-void
.end method

.method public setRemoteAdapter(ILjava/util/ArrayList;I)V
    .registers 5
    .param p1, "viewId"    # I
    .param p3, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2653
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2654
    return-void
.end method

.method public setScrollPosition(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    .prologue
    .line 2663
    const-string/jumbo v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2664
    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .prologue
    .line 2719
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2720
    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2785
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2786
    return-void
.end method

.method public setStringMap(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_f

    .line 193
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isNotification:Z

    .line 195
    iput-object p1, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    .line 198
    :cond_f
    return-void
.end method

.method public setTextColor(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .prologue
    .line 2600
    const-string/jumbo v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2601
    return-void
.end method

.method public setTextViewCompoundDrawables(IIIII)V
    .registers 14
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2317
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2318
    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(IIIII)V
    .registers 14
    .param p1, "viewId"    # I
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2332
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2333
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2281
    const-string/jumbo v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 2282
    return-void
.end method

.method public setTextViewTextSize(IIF)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "units"    # I
    .param p3, "size"    # F

    .prologue
    .line 2303
    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;IIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2304
    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/net/Uri;

    .prologue
    .line 2807
    if-eqz p3, :cond_11

    .line 2809
    invoke-virtual {p3}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p3

    .line 2810
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2811
    const-string v0, "RemoteViews.setUri()"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 2814
    :cond_11
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xb

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2815
    return-void
.end method

.method public setUser(Landroid/os/UserHandle;)V
    .registers 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1939
    iput-object p1, p0, Landroid/widget/RemoteViews;->mUser:Landroid/os/UserHandle;

    .line 1940
    return-void
.end method

.method public setViewFingerHovered(IZ)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 2291
    const-string/jumbo v0, "setFingerHoveredInAppWidget"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 2292
    return-void
.end method

.method public setViewPadding(IIIII)V
    .registers 13
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2686
    new-instance v0, Landroid/widget/RemoteViews$ViewPaddingAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;IIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2687
    return-void
.end method

.method public setViewVisibility(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 2271
    const-string/jumbo v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2272
    return-void
.end method

.method public showNext(I)V
    .registers 4
    .param p1, "viewId"    # I

    .prologue
    .line 2242
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string/jumbo v1, "showNext"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2243
    return-void
.end method

.method public showPrevious(I)V
    .registers 4
    .param p1, "viewId"    # I

    .prologue
    .line 2251
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string/jumbo v1, "showPrevious"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2252
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 12
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3000
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v8

    if-nez v8, :cond_47

    .line 3001
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3004
    iget-boolean v8, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v8, :cond_14

    .line 3005
    iget-object v8, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v8, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 3007
    :cond_14
    iget-object v8, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3008
    iget v8, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3009
    iget-boolean v8, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    if-eqz v8, :cond_43

    :goto_22
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3011
    iget-object v6, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_45

    .line 3012
    iget-object v6, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3016
    .local v1, "count":I
    :goto_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3017
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v1, :cond_5d

    .line 3018
    iget-object v6, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 3019
    .local v0, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, v7}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3017
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_43
    move v6, v7

    .line 3009
    goto :goto_22

    .line 3014
    :cond_45
    const/4 v1, 0x0

    .restart local v1    # "count":I
    goto :goto_2f

    .line 3022
    .end local v1    # "count":I
    :cond_47
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3025
    iget-boolean v6, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v6, :cond_53

    .line 3026
    iget-object v6, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v6, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 3028
    :cond_53
    iget-object v6, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v6, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3029
    iget-object v6, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v6, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3032
    :cond_5d
    sget-boolean v6, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v6, :cond_98

    .line 3033
    iget-boolean v6, p0, Landroid/widget/RemoteViews;->isNotification:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 3034
    iget-object v6, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v5

    .line 3035
    .local v5, "size":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3036
    iget-object v6, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_7d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_98

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 3037
    .local v4, "key":Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 3038
    iget-object v6, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_7d

    .line 3041
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/CharSequence;
    .end local v5    # "size":I
    :cond_98
    return-void
.end method
