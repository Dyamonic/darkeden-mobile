package com.taptap.sdk.moment.legacy.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.graphics.PaintFlagsDrawFilter;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class TTMGifView extends View {
    private static final int DEFAULT_MOVIEW_DURATION = 1000;
    private int mCurrentAnimationTime;
    private float mLeft;
    private int mMeasuredMovieHeight;
    private int mMeasuredMovieWidth;
    private Movie mMovie;
    private int mMovieResourceId;
    private long mMovieStart;
    private volatile boolean mPaused;
    private float mScale;
    private float mTop;
    private boolean mVisible;

    public TTMGifView(Context context) {
        this(context, null);
    }

    public TTMGifView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public TTMGifView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCurrentAnimationTime = 0;
        this.mPaused = false;
        this.mVisible = true;
        setViewAttributes(context, attributeSet, i);
    }

    private void setViewAttributes(Context context, AttributeSet attributeSet, int i) {
        setLayerType(1, null);
    }

    public void setMovieResource(int i) {
        this.mMovieResourceId = i;
        this.mMovie = Movie.decodeStream(getResources().openRawResource(this.mMovieResourceId));
        requestLayout();
    }

    public void setMovie(Movie movie) {
        this.mMovie = movie;
        requestLayout();
    }

    public Movie getMovie() {
        return this.mMovie;
    }

    public void setMovieTime(int i) {
        this.mCurrentAnimationTime = i;
        invalidate();
    }

    public void setPaused(boolean z) {
        this.mPaused = z;
        if (!z) {
            this.mMovieStart = SystemClock.uptimeMillis() - this.mCurrentAnimationTime;
        }
        invalidate();
    }

    public boolean isPaused() {
        return this.mPaused;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size;
        int size2;
        Movie movie = this.mMovie;
        if (movie != null) {
            int width = movie.width();
            int height = this.mMovie.height();
            float max = 1.0f / Math.max((View.MeasureSpec.getMode(i) == 0 || width <= (size2 = View.MeasureSpec.getSize(i))) ? 1.0f : width / size2, (View.MeasureSpec.getMode(i2) == 0 || height <= (size = View.MeasureSpec.getSize(i2))) ? 1.0f : height / size);
            this.mScale = max;
            int i3 = (int) (width * max);
            this.mMeasuredMovieWidth = i3;
            int i4 = (int) (height * max);
            this.mMeasuredMovieHeight = i4;
            setMeasuredDimension(i3, i4);
            return;
        }
        setMeasuredDimension(getSuggestedMinimumWidth(), getSuggestedMinimumHeight());
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mLeft = (getWidth() - this.mMeasuredMovieWidth) / 2.0f;
        this.mTop = (getHeight() - this.mMeasuredMovieHeight) / 2.0f;
        this.mVisible = getVisibility() == 0;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mMovie != null) {
            if (!this.mPaused) {
                updateAnimationTime();
                drawMovieFrame(canvas);
                invalidateView();
                return;
            }
            drawMovieFrame(canvas);
        }
    }

    private void invalidateView() {
        if (this.mVisible) {
            postInvalidateOnAnimation();
        }
    }

    private void updateAnimationTime() {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.mMovieStart == 0) {
            this.mMovieStart = uptimeMillis;
        }
        int duration = this.mMovie.duration();
        if (duration == 0) {
            duration = 1000;
        }
        this.mCurrentAnimationTime = (int) ((uptimeMillis - this.mMovieStart) % duration);
    }

    private void drawMovieFrame(Canvas canvas) {
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
        this.mMovie.setTime(this.mCurrentAnimationTime);
        float f = this.mScale;
        canvas.scale(f, f);
        Movie movie = this.mMovie;
        float f2 = this.mLeft;
        float f3 = this.mScale;
        movie.draw(canvas, f2 / f3, this.mTop / f3);
        canvas.restore();
    }

    @Override // android.view.View
    public void onScreenStateChanged(int i) {
        super.onScreenStateChanged(i);
        this.mVisible = i == 1;
        invalidateView();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        this.mVisible = i == 0;
        invalidateView();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.mVisible = i == 0;
        invalidateView();
    }
}
